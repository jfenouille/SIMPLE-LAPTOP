function formatDate(input) {
    var inputValue = input.value;
        var cleanedValue = inputValue.replace(/\D/g, '');
    if (cleanedValue.length >= 2) {
      var month = cleanedValue.substring(0, 2);
      var year = cleanedValue.substring(2, cleanedValue.length);
      
      input.value = month + '/' + year;
    } else {
      input.value = cleanedValue;
    }
  }