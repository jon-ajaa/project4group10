// Fungsi untuk mengubah radio button yang terpilih
function changeReview() {
    const radios = document.querySelectorAll('input[name="position"]');
    let currentPosition = 0;
    
    // Temukan radio yang sedang terpilih
    radios.forEach((radio, index) => {
        if (radio.checked) {
            currentPosition = index;
        }
    });

    // Pilih radio berikutnya (looping kembali ke yang pertama setelah yang terakhir)
    const nextPosition = (currentPosition + 1) % radios.length;
    radios[nextPosition].checked = true;
}

// Ubah posisi setiap 3 detik
setInterval(changeReview, 3000);
