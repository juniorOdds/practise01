function animateButton() {
    var button = document.querySelector('.animated-button');
    button.classList.add('clicked');
  
    // รอเวลา 300 มิลลิวินาทีและลบคลาส 'clicked' เพื่อเริ่มเล่น animation อีกครั้ง
    setTimeout(function() {
        alert('ปุ่มขยับแล้ว!');
      button.classList.remove('clicked');
    });
  }