


// MongoDB STAJ ÇALIŞMALARI
// Temel CRUD ve sorgulama işlemleri


// Database seçimi
use("MongoDB_STAJ");



// 1. TEK KAYIT EKLEME - insertOne()


db.Calisanlar.insertOne({
    ad: "Ahmet",
    soyad: "Yilmaz",
    yas: 25,
    departman: "Yazilim"
});



// 2. ÇOKLU KAYIT EKLEME - insertMany()


db.Calisanlar.insertMany([
    {
        ad: "Ayse",
        soyad: "Kaya",
        yas: 28,
        departman: "Muhendislik"
    },
    {
        ad: "Mehmet",
        soyad: "Demir",
        yas: 23,
        departman: "Yazilim"
    }
]);



// 3. TÜM KAYITLARI GÖRÜNTÜLEME - find()


db.Calisanlar.find();



// 4. DEPARTMANA GÖRE FİLTRELEME


db.Calisanlar.find({
    departman: "Yazilim"
});



// 5. YAŞI 25'TEN BÜYÜK OLANLAR
// $gt = greater than


db.Calisanlar.find({
    yas: { $gt: 25 }
});



// 6. YAŞI 25 VE ÜZERİ OLANLAR



db.Calisanlar.find({
    yas: { $gte: 25 }
});



// 7. BİRDEN FAZLA ŞART



db.Calisanlar.find({
    yas: { $gte: 25 },
    departman: "Yazilim"
});



// 8. OR MANTIĞI


db.Calisanlar.find({
    $or: [
        { departman: "Yazilim" },
        { yas: { $lt: 25 } }
    ]
});



// 9. TEK KAYIT GÜNCELLEME - updateOne()


db.Calisanlar.updateOne(
    {
        ad: "Ahmet",
        soyad: "Yilmaz"
    },
    {
        $set: {
            departman: "Yapay Zeka"
        }
    }
);



// 10. BİRDEN FAZLA KAYIT GÜNCELLEME - updateMany()


db.Calisanlar.updateMany(
    {
        departman: "Yazilim"
    },
    {
        $set: {
            departman: "Yazilim Geliştirme"
        }
    }
);



// 11. TEST KAYDI EKLEME


db.Calisanlar.insertOne({
    ad: "Test",
    soyad: "Kullanici",
    yas: 20,
    departman: "Test"
});



// 12. TEK KAYIT SİLME - deleteOne()


db.Calisanlar.deleteOne({
    ad: "Test",
    soyad: "Kullanici"
});



// 13. ÇOKLU KAYIT SİLME - deleteMany()


db.Calisanlar.deleteMany({
    departman: "Test"
});



// 14. SON DURUMU KONTROL ETME


db.Calisanlar.find();



