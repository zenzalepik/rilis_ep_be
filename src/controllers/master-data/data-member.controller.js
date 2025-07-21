const errorhandler = require('../../helpers/errorhandler.helper')
const {
    data_member,
    perusahaan,
    produk_member,
    data_nomor_polisi,
    riwayat_transaksi_member,
    riwayat_transaksi_kartu_member,
    riwayat_transaksi_ganti_nopol,
    laporan_riwayat_transaksi_member,
    user,
} = require('../../models/index')
const fs = require('fs')
const puppeteer = require('puppeteer')
const ExcelJS = require('exceljs')
const dayjs = require('dayjs')
const sequelize = require('../../models/index').sequelize
const Op = require('sequelize').Op

function generateTableRows(data) {
    return data
        .map(
            (item) => `
    <tr>
      <td>${item.no}</td>
      <td>${item.nama}</td>
      <td>${item.no_hp}</td>
      <td>${item.perusahaan}</td>
      <td>${item.akses_tiket}</td>
      <td>${item.akses_kartu}</td>
      <td>${item.no_kartu}</td>
      <td>${item.tgl_input}</td>
      <td>${item.produk_member}</td>
      <td>${item.tarif}</td>
      <td>${item.masa_aktif}</td>
      <td>${item.created}</td>
      <td>${item.updated}</td>
    </tr>
  `
        )
        .join('')
}

module.exports = {
    getAll: async (req, res) => {
        try {
            const search = req.query.search || ''
            const limit = req.query.limit ? parseInt(req.query.limit) : null
            const page = req.query.page ? parseInt(req.query.page) : null
            const offset = page && limit ? (page - 1) * limit : null
            const sortBy = req.query.sortBy || 'id'
            const sortOrder = req.query.sortOrder || 'asc'

            const options = {
                include: [
                    {
                        model: perusahaan,
                        as: 'perusahaan',
                        attributes: ['id', 'nama'],
                    },
                    {
                        model: produk_member,
                        as: 'produk_member',
                        attributes: ['id', 'nama'],
                    },
                    {
                        model: data_nomor_polisi,
                        as: 'data_nomor_polisi',
                        attributes: ['id', 'nomor_polisi'],
                    },
                    {
                        model: user,
                        as: 'user',
                        attributes: ['id', 'nama'],
                    },
                ],
                order: [[sortBy, sortOrder]],
                where: {},
            }

            if (search) {
                const searchLower = search.toLowerCase()
                let statusFilter = null

                if (searchLower === 'true' || searchLower === '1') {
                    statusFilter = true
                } else if (searchLower === 'false' || searchLower === '0') {
                    statusFilter = false
                }

                options.where = {
                    [Op.or]: [
                        { nama: { [Op.iLike]: `%${search}%` } },
                        { no_hp: { [Op.iLike]: `%${search}%` } },
                        {
                            '$perusahaan.nama$': { [Op.iLike]: `%${search}%` },
                        },

                        ...(statusFilter !== null
                            ? [
                                  {
                                      akses_tiket: statusFilter,
                                      akses_kartu: statusFilter,
                                  },
                              ]
                            : []),

                        { no_kartu: { [Op.iLike]: `%${search}%` } },
                        { tgl_input: { [Op.iLike]: `%${search}%` } },
                        {
                            '$produk_member.nama$': {
                                [Op.iLike]: `%${search}%`,
                            },
                        },
                        literal(`CAST("tarif" AS TEXT) ILIKE '%${search}%'`),
                        literal(
                            `CAST("biaya_member" AS TEXT) ILIKE '%${search}%'`
                        ),
                        literal(
                            `CAST("biaya_kartu" AS TEXT) ILIKE '%${search}%'`
                        ),
                        {
                            '$data_nomor_polisi.nomor_polisi$': {
                                [Op.iLike]: `%${search}%`,
                            },
                        },
                    ],
                }
            }

            if (limit !== null && offset !== null) {
                options.limit = limit
                options.offset = offset
            }

            const { count, rows } = await data_member.findAndCountAll(options)

            return res.json({
                success: true,
                message: 'Get all data member successfully',
                results: {
                    data: rows,
                    totalData: count,
                    totalPages: limit ? Math.ceil(count / limit) : null,
                    currentPage: page,
                    pageSize: limit,
                },
            })
        } catch (err) {
            return errorhandler(res, err)
        }
    },
    getRiwayatTransaksiGantiNopol: async (req, res) => {
        try {
            const search = req.query.search || ''
            const limit = req.query.limit ? parseInt(req.query.limit) : null
            const page = req.query.page ? parseInt(req.query.page) : null
            const offset = page && limit ? (page - 1) * limit : null
            const sortBy = req.query.sortBy || 'id'
            const sortOrder = req.query.sortOrder || 'asc'

            const options = {
                include: [
                    {
                        model: user,
                        as: 'user',
                        attributes: ['id', 'nama'],
                    },
                ],
                order: [[sortBy, sortOrder]],
                where: {},
            }

            if (search) {
                options.where = {
                    [Op.or]: [
                        { nomor_polisi_lama: { [Op.iLike]: `%${search}%` } },
                        { nomor_polisi_baru: { [Op.iLike]: `%${search}%` } },
                        { keterangan: { [Op.iLike]: `%${search}%` } },
                        {
                            '$user.nama$': { [Op.iLike]: `%${search}%` },
                        },
                    ],
                }
            }

            if (limit !== null && offset !== null) {
                options.limit = limit
                options.offset = offset
            }

            const { count, rows } =
                await riwayat_transaksi_ganti_nopol.findAndCountAll(options)

            return res.json({
                success: true,
                message: 'Get all riwayat transaksi ganti nopol successfully',
                results: {
                    data: rows,
                    totalData: count,
                    totalPages: limit ? Math.ceil(count / limit) : null,
                    currentPage: page,
                    pageSize: limit,
                },
            })
        } catch (err) {
            return errorhandler(res, err)
        }
    },
    getRiwayatTransaksiKartuMember: async (req, res) => {
        try {
            const search = req.query.search || ''
            const limit = req.query.limit ? parseInt(req.query.limit) : null
            const page = req.query.page ? parseInt(req.query.page) : null
            const offset = page && limit ? (page - 1) * limit : null
            const sortBy = req.query.sortBy || 'id'
            const sortOrder = req.query.sortOrder || 'asc'

            const options = {
                include: [
                    {
                        model: user,
                        as: 'user',
                        attributes: ['id', 'nama'],
                    },
                ],
                order: [[sortBy, sortOrder]],
                where: {},
            }

            if (search) {
                options.where = {
                    [Op.or]: [
                        { no_kartu: { [Op.iLike]: `%${search}%` } },
                        { keterangan: { [Op.iLike]: `%${search}%` } },
                        {
                            '$user.nama$': { [Op.iLike]: `%${search}%` },
                        },
                    ],
                }
            }

            if (limit !== null && offset !== null) {
                options.limit = limit
                options.offset = offset
            }

            const { count, rows } =
                await riwayat_transaksi_kartu_member.findAndCountAll(options)

            return res.json({
                success: true,
                message: 'Get all riwayat transaksi kartu member successfully',
                results: {
                    data: rows,
                    totalData: count,
                    totalPages: limit ? Math.ceil(count / limit) : null,
                    currentPage: page,
                    pageSize: limit,
                },
            })
        } catch (err) {
            return errorhandler(res, err)
        }
    },
    getRiwayatTransaksiMember: async (req, res) => {
        try {
            const search = req.query.search || ''
            const limit = req.query.limit ? parseInt(req.query.limit) : null
            const page = req.query.page ? parseInt(req.query.page) : null
            const offset = page && limit ? (page - 1) * limit : null
            const sortBy = req.query.sortBy || 'id'
            const sortOrder = req.query.sortOrder || 'asc'

            const options = {
                include: [
                    {
                        model: user,
                        as: 'user',
                        attributes: ['id', 'nama'],
                    },
                    {
                        model: pos,
                        as: 'gerbang_masuk',
                        attributes: ['id', 'kode', 'keterangan'],
                    },
                    {
                        model: pos,
                        as: 'pintu_keluar',
                        attributes: ['id', 'kode', 'keterangan'],
                    },
                    {
                        model: kendaraan,
                        as: 'jenis_kendaraan',
                        attributes: ['id', 'nama_kendaraan'],
                    },
                ],
                order: [[sortBy, sortOrder]],
                where: {},
            }

            if (search) {
                options.where = {
                    [Op.or]: [
                        { nomor_tiket: { [Op.iLike]: `%${search}%` } },
                        { nomor_polisi: { [Op.iLike]: `%${search}%` } },
                        { durasi_parkir: { [Op.iLike]: `%${search}%` } },
                        { denda: { [Op.iLike]: `%${search}%` } },
                        { total_pembayaran: { [Op.iLike]: `%${search}%` } },
                        { jenis_transaksi: { [Op.iLike]: `%${search}%` } },
                        { '$user.nama$': { [Op.iLike]: `%${search}%` } },
                        {
                            '$gerbang_masuk.kode$': {
                                [Op.iLike]: `%${search}%`,
                            },
                        },
                        {
                            '$pintu_keluar.kode$': {
                                [Op.iLike]: `%${search}%`,
                            },
                        },
                        {
                            '$jenis_kendaraan.nama_kendaraan$': {
                                [Op.iLike]: `%${search}%`,
                            },
                        },
                    ],
                }
            }

            if (limit !== null && offset !== null) {
                options.limit = limit
                options.offset = offset
            }

            const { count, rows } =
                await laporan_riwayat_transaksi_member.findAndCountAll(options)

            return res.json({
                success: true,
                message: 'Get all riwayat transaksi member successfully',
                results: {
                    data: rows,
                    totalData: count,
                    totalPages: limit ? Math.ceil(count / limit) : null,
                    currentPage: page,
                    pageSize: limit,
                },
            })
        } catch (err) {
            return errorhandler(res, err)
        }
    },
    generatePdf: async (req, res) => {
        try {
            const startDate = new Date(req.query.start_date)
            const endDate = new Date(req.query.end_date)

            endDate.setHours(23, 59, 59, 999)

            const data = await data_member.findAll({
                include: [
                    { model: perusahaan, as: 'perusahaan' },
                    { model: produk_member, as: 'produk_member' },
                    { model: data_nomor_polisi, as: 'data_nomor_polisi' },
                    { model: user, as: 'user', attributes: ['id', 'nama'] },
                ],
                where: {
                    createdAt: {
                        [Op.between]: [startDate, endDate],
                    },
                },
            })

            const tableData = data.map((item, index) => {
                const startDate = dayjs(item.periode?.[0]?.value)
                const endDate = dayjs(item.periode?.[1]?.value)
                const masa_aktif =
                    startDate.isValid() && endDate.isValid()
                        ? `${startDate.format('DD/MM/YYYY')} s/d ${endDate
                              .subtract(1, 'day')
                              .format('DD/MM/YYYY')}`
                        : '-'

                return {
                    no: index + 1,
                    nama: item.nama,
                    no_hp: item.no_hp,
                    perusahaan: item.perusahaan.nama,
                    akses_tiket: item.akses_tiket === true ? 'Ya' : 'Tidak',
                    akses_kartu: item.akses_kartu === true ? 'Ya' : 'Tidak',
                    no_kartu: item.no_kartu,
                    tgl_input: dayjs(item.tgl_input).format('DD/MM/YYYY'),
                    produk_member: item.produk_member.nama,
                    tarif: item.tarif,
                    masa_aktif,
                    created: dayjs(item.createdAt).format('DD/MM/YYYY'),
                    updated: dayjs(item.updatedAt).format('DD/MM/YYYY'),
                }
            })

            const template = fs.readFileSync(
                'src/templates/master-data/data-member.template.html',
                'utf-8'
            )
            const rowsHtml = generateTableRows(tableData)
            const downloadDate = dayjs().format('DD-MM-YYYY HH:mm')
            const finalHtml = template
                .replace('{{rows}}', rowsHtml)
                .replace('{{date}}', downloadDate)

            const browser = await puppeteer.launch()
            const page = await browser.newPage()
            await page.setContent(finalHtml, { waitUntil: 'networkidle0' })

            const pdfBuffer = await page.pdf({
                path: 'data-member.pdf',
                format: 'A3',
                margin: {
                    top: '10mm',
                    bottom: '10mm',
                    left: '10mm',
                    right: '10mm',
                },
                printBackground: true,
            })

            await browser.close()

            res.set({
                'Content-Type': 'application/pdf',
                'Content-Disposition': 'inline; filename="report.pdf"',
                'Content-Length': pdfBuffer.length,
            })

            res.send(pdfBuffer)
        } catch (err) {
            console.error(err)
            res.status(500).send('Error generating PDF')
        }
    },
    generateExcel: async (req, res) => {
        try {
            const data = await data_member.findAll({
                include: [
                    { model: perusahaan, as: 'perusahaan' },
                    { model: produk_member, as: 'produk_member' },
                    { model: data_nomor_polisi, as: 'data_nomor_polisi' },
                    { model: user, as: 'user', attributes: ['id', 'nama'] },
                ],
                where: {
                    createdAt: {
                        [Op.between]: [
                            req.query.start_date,
                            req.query.end_date,
                        ],
                    },
                },
            })

            const workbook = new ExcelJS.Workbook()
            const worksheet = workbook.addWorksheet('Data Member')

            const dateStr = new Date().toLocaleDateString('id-ID', {
                day: '2-digit',
                month: 'long',
                year: 'numeric',
            })

            const headers = [
                'No.',
                'Nama',
                'Kontak',
                'Perusahaan',
                'Akses Tiket',
                'Akses Kartu',
                'Nomor Kartu',
                'Tgl Input',
                'Produk Member',
                'Tarif',
                'Masa Aktif',
                'Added',
            ]
            const lastColLetter = String.fromCharCode(65 + headers.length - 1)

            const mergeAndStyle = (value, font, rowIdx) => {
                worksheet.mergeCells(`A${rowIdx}:${lastColLetter}${rowIdx}`)
                const cellObj = worksheet.getCell(`A${rowIdx}`)
                cellObj.value = value
                cellObj.alignment = { horizontal: 'center' }
                cellObj.font = font
            }

            // === Judul Atas ===
            mergeAndStyle('Evolusi Park', { bold: true, size: 12 }, 1)
            mergeAndStyle(
                'Developed by PT. Evosist (Evolusi Sistem)',
                { italic: true, size: 10 },
                2
            )
            mergeAndStyle('Data Member', { bold: true, size: 20 }, 3)
            mergeAndStyle(dateStr, { size: 10 }, 4)

            worksheet.addRow([])

            // === Header Tabel ===
            const headerRow = worksheet.addRow(headers)
            headerRow.eachCell((cell) => {
                cell.fill = {
                    type: 'pattern',
                    pattern: 'solid',
                    fgColor: { argb: 'FFFF5B2A' },
                }
                cell.font = { bold: true, color: { argb: 'FFFFFFFF' } }
                cell.border = {
                    top: { style: 'thin' },
                    left: { style: 'thin' },
                    bottom: { style: 'thick' },
                    right: { style: 'thin' },
                }
                cell.alignment = { horizontal: 'center' }
            })

            // Format masa_aktif dari periode
            const formatPeriode = (periode) => {
                if (!Array.isArray(periode) || periode.length !== 2) return '-'

                const start = new Date(periode[0].value).toLocaleDateString(
                    'id-ID'
                )
                const end = new Date(periode[1].value).toLocaleDateString(
                    'id-ID'
                )

                return `${start} s.d ${end}`
            }

            // === Data Rows ===
            data.forEach((item, index) => {
                const row = worksheet.addRow([
                    index + 1,
                    item.nama,
                    item.no_hp,
                    item.perusahaan.nama,
                    item.akses_tiket ? 'Ya' : 'Tidak',
                    item.akses_kartu ? 'Ya' : 'Tidak',
                    item.no_kartu,
                    item.tgl_input,
                    item.produk_member.nama,
                    item.tarif,
                    formatPeriode(item.periode),
                    new Date(item.createdAt).toLocaleString('id-ID'),
                ])

                row.eachCell((cell) => {
                    cell.border = {
                        top: { style: 'thin' },
                        left: { style: 'thin' },
                        bottom: { style: 'thin' },
                        right: { style: 'thin' },
                    }
                    cell.alignment = { vertical: 'middle' }
                })
            })

            // Auto-width kolom
            worksheet.columns.forEach((col) => {
                let maxLength = 10
                col.eachCell({ includeEmpty: true }, (cell) => {
                    if (cell.value) {
                        const length = cell.value.toString().length
                        if (length > maxLength) maxLength = length
                    }
                })
                col.width = maxLength + 2
            })

            // === Set header response and kirim Excel file ===
            res.setHeader(
                'Content-Type',
                'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
            )
            res.setHeader(
                'Content-Disposition',
                'attachment; filename=DataMember.xlsx'
            )
            await workbook.xlsx.write(res)
            res.end()
        } catch (err) {
            return errorhandler(res, err)
        }
    },
    create: async (req, res) => {
        try {
            const data = await data_member.create(req.body)

            const nomorPolisiData = req.body.data_nomor_polisi.map((item) => ({
                ...item,
                data_member_id: data.id,
            }))

            await data_nomor_polisi.bulkCreate(nomorPolisiData)

            return res.json({
                success: true,
                message: 'Create data member successfully',
                results: { data, data_nomor_polisi: nomorPolisiData },
            })
        } catch (err) {
            return errorhandler(res, err)
        }
    },
    perpanjangMasaAktif: async (req, res) => {
        try {
            // Ambil semua kendaraan_id milik member
            const kendaraanList = await data_nomor_polisi.findAll({
                where: { data_member_id: req.params.id },
                attributes: ['kendaraan_id'],
            })

            const memberKendaraanIds = kendaraanList.map((k) =>
                k.kendaraan_id.toString()
            )

            // Ambil produk_member baru yang akan digunakan
            const produk = await produk_member.findOne({
                where: { id: req.body.produk_id },
                attributes: ['list_id_kendaraan'],
            })

            if (!produk) {
                return res.status(404).json({
                    success: false,
                    message: 'Produk member tidak ditemukan',
                })
            }

            const listIdKendaraan = produk.list_id_kendaraan.map((id) =>
                id.toString()
            )

            // Cek apakah semua kendaraan member terdapat dalam list produk
            const kendaraanTidakTerdaftar = memberKendaraanIds.filter(
                (id) => !listIdKendaraan.includes(id)
            )

            if (kendaraanTidakTerdaftar.length > 0) {
                return res.status(400).json({
                    success: false,
                    message: 'Kendaraan tidak sesuai dengan produk member',
                })
            }

            const data = await data_member.update(req.body, {
                where: {
                    id: req.params.id,
                },
            })

            await riwayat_transaksi_member.create({
                tgl_transaksi: new Date(),
                produk_id: req.body.produk_id,
                tarif: req.body.tarif,
                masa_aktif: req.body.periode,
                user_id: req.body.user_id,
            })

            return res.json({
                success: true,
                message: 'Update data member successfully',
                results: data,
            })
        } catch (err) {
            return errorhandler(res, err)
        }
    },
    gantiNopol: async (req, res) => {
        try {
            // Cek apakah nomor polisi lama ada
            const data_nopol_lama = await data_nomor_polisi.findOne({
                where: {
                    nomor_polisi: req.body.nomor_polisi_lama,
                },
            })

            if (!data_nopol_lama) {
                return res.status(404).json({
                    success: false,
                    message: 'Nomor polisi lama tidak ditemukan',
                })
            }

            // Update nomor polisi
            const data = await data_nomor_polisi.update(
                {
                    nomor_polisi: req.body.nomor_polisi_baru,
                    kendaraan_id: req.body.kendaraan_id,
                },
                {
                    where: {
                        nomor_polisi: req.body.nomor_polisi_lama,
                    },
                }
            )

            // Cek data produk member
            const produkMemberData = await data_member.findOne({
                where: {
                    id: req.params.id,
                },
                include: [{ model: produk_member, as: 'produk_member' }],
            })

            if (!produkMemberData) {
                return res.status(404).json({
                    success: false,
                    message: 'Produk member tidak ditemukan',
                })
            }

            // Buat riwayat transaksi
            await riwayat_transaksi_ganti_nopol.create({
                tgl_transaksi: new Date(),
                nomor_polisi_lama: req.body.nomor_polisi_lama,
                nomor_polisi_baru: req.body.nomor_polisi_baru,
                tarif: produkMemberData?.produk_member?.tarif,
                keterangan: req.body.keterangan,
                user_id: req.body.user_id,
            })

            return res.json({
                success: true,
                message: 'Update data member successfully',
                results: data,
            })
        } catch (err) {
            return errorhandler(res, err)
        }
    },
    gantiKartu: async (req, res) => {
        try {
            const data = await data_member.update(
                {
                    no_kartu: req.body.no_kartu,
                },
                {
                    where: {
                        id: req.params.id,
                    },
                }
            )

            // Cek data member
            const dataMember = await data_member.findOne({
                where: {
                    id: req.params.id,
                },
                include: [{ model: produk_member, as: 'produk_member' }],
            })

            if (!dataMember) {
                return res.status(404).json({
                    success: false,
                    message: 'Data member tidak ditemukan',
                })
            }

            // Buat riwayat transaksi
            await riwayat_transaksi_kartu_member.create({
                tgl_transaksi: new Date(),
                no_kartu: req.body.no_kartu,
                tarif: dataMember?.produk_member?.tarif,
                keterangan: req.body.keterangan,
                user_id: req.body.user_id,
            })

            return res.json({
                success: true,
                message: 'Update data member successfully',
                results: data,
            })
        } catch (err) {
            return errorhandler(res, err)
        }
    },
    findOneById: async (req, res) => {
        try {
            const data = await data_member.findAll({
                where: {
                    id: req.params.id,
                },
                include: [
                    { model: perusahaan, as: 'perusahaan' },
                    { model: produk_member, as: 'produk_member' },
                    { model: data_nomor_polisi, as: 'data_nomor_polisi' },
                    { model: user, as: 'user', attributes: ['id', 'nama'] },
                ],
            })
            return res.json({
                success: true,
                message: 'Get data member successfully',
                results: data,
            })
        } catch (err) {
            return errorhandler(res, err)
        }
    },
    update: async (req, res) => {
        const t = await sequelize.transaction()
        try {
            // Ambil data dari req.body dan beri alias untuk menghindari konflik nama
            const {
                data_nomor_polisi: dataNomorPolisi,
                periode,
                ...memberData
            } = req.body

            // Ubah periode array menjadi dua field terpisah
            memberData.periode_awal = periode?.[0] || null
            memberData.periode_akhir = periode?.[1] || null

            // Update data_member berdasarkan ID
            const [updatedCount] = await data_member.update(memberData, {
                where: { id: req.params.id },
                transaction: t,
            })

            if (updatedCount === 0) {
                await t.rollback()
                return res.status(404).json({
                    success: false,
                    message: 'Data member tidak ditemukan',
                })
            }

            // Hapus semua nomor polisi lama yang terkait dengan data_member ini
            await data_nomor_polisi.destroy({
                where: { data_member_id: req.params.id },
                transaction: t,
            })

            // Tambahkan nomor polisi baru jika ada
            let nomorPolisiBaru = []
            if (Array.isArray(dataNomorPolisi)) {
                nomorPolisiBaru = dataNomorPolisi.map((item) => ({
                    ...item,
                    data_member_id: req.params.id,
                }))

                await data_nomor_polisi.bulkCreate(nomorPolisiBaru, {
                    transaction: t,
                })
            }

            // Commit transaksi jika semua berhasil
            await t.commit()

            return res.json({
                success: true,
                message: 'Berhasil update data member',
                results: {
                    id: req.params.id,
                    data_nomor_polisi: nomorPolisiBaru,
                },
            })
        } catch (err) {
            await t.rollback()
            return res.status(500).json({
                success: false,
                message: 'Gagal update data member',
                error: err.message,
            })
        }
    },
    delete: async (req, res) => {
        try {
            const data = await data_member.destroy({
                where: {
                    id: req.params.id,
                },
            })
            return res.json({
                success: true,
                message: 'Delete data member successfully',
                results: data,
            })
        } catch (err) {
            return errorhandler(res, err)
        }
    },
}
