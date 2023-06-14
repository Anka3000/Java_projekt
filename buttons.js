
//Referencje z HTML
const input_rezerwuj = document.getElementById('input_rezerwuj');
const przycisk_rezerwuj = document.getElementById('rezerwuj');

const input_wypozycz = document.getElementById('input_wypozycz');
const przycisk_wypozycz = document.getElementById('wypozycz');

const input_zwroc = document.getElementById('input_zwroc');
const przycisk_zwroc = document.getElementById('zwroc');

const input_sprawdz = document.getElementById('input_sprawdz');
const przycisk_sprawdz = document.getElementById('sprawdz');

function wpisanieDanych(input, przycisk) 
{
  const wpisaneDane = input.value;
  console.log('Wpisane dane:', wpisaneDane);
  let url;


  if (przycisk === przycisk_rezerwuj) {
    url = 'out_r.html';
  } else if (przycisk === przycisk_wypozycz) {
    url = 'out_w.html';
  } else if (przycisk === przycisk_zwroc) {
    url = 'out_z.html';
  } else if (przycisk === przycisk_sprawdz) {
    url = 'out_s.html';
  }

  if (url) {
    window.location.href = url;
  }
}
przycisk_rezerwuj.addEventListener('click', function() {
  wpisanieDanych(input_rezerwuj, przycisk_rezerwuj);
});

przycisk_wypozycz.addEventListener('click', function() {
  wpisanieDanych(input_wypozycz, przycisk_wypozycz);
});

przycisk_zwroc.addEventListener('click', function() {
  wpisanieDanych(input_zwroc, przycisk_zwroc);
});

przycisk_sprawdz.addEventListener('click',function(){
  wpisanieDanych(input_sprawdz, przycisk_sprawdz);
});

