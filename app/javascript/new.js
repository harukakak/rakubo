window.addEventListener('load', () => {
  const priceInput1 = document.getElementById("item-price1");
  const priceInput2 = document.getElementById("item-price2");
  const priceInput3 = document.getElementById("item-price3");
  const priceInput4 = document.getElementById("item-price4");
  const priceInput5 = document.getElementById("item-price5");
  const priceInput6 = document.getElementById("item-price6");
  const priceInput7 = document.getElementById("item-price7");
  const priceInput8 = document.getElementById("item-price8");
  const priceInput9 = document.getElementById("item-price9");
  const priceInput10 = document.getElementById("item-price10");
  const priceInput11 = document.getElementById("item-price11");
  priceInput1.addEventListener("input", () => {
    const inputValue1 = priceInput1.value;
    const inputValue2 = priceInput2.value;
    const inputValue3 = priceInput3.value;
    const inputValue4 = priceInput4.value;
    const inputValue5 = priceInput5.value;
    const inputValue6 = priceInput6.value;
    const inputValue7 = priceInput7.value;
    const inputValue8 = priceInput8.value;
    const inputValue9 = priceInput9.value;
    const inputValue10 = priceInput10.value;
    const inputValue11 = priceInput11.value;
    const info = document.getElementById("item-info");
    const infoValue = info.value
    const incomePriceDom = document.getElementById("income-price");
    const outcomeDom = document.getElementById("outcome-price");
    const addPriceDom = document.getElementById("add-price");
    const sum1 = Number(inputValue1) + Number(inputValue2) + Number(inputValue3)
      + Number(inputValue4) + Number(inputValue5) + Number(inputValue6)
      + Number(inputValue7) + Number(inputValue8) + Number(inputValue9)
      + Number(inputValue10) + Number(inputValue11)
    const numberWithComma = new Intl.NumberFormat();
    incomePriceDom.innerHTML = numberWithComma.format(infoValue);
    outcomeDom.innerHTML = numberWithComma.format(sum1);
    addPriceDom.innerHTML = numberWithComma.format(Math.floor(infoValue - sum1));
  })
  priceInput2.addEventListener("input", () => {
    const inputValue1 = priceInput1.value;
    const inputValue2 = priceInput2.value;
    const inputValue3 = priceInput3.value;
    const inputValue4 = priceInput4.value;
    const inputValue5 = priceInput5.value;
    const inputValue6 = priceInput6.value;
    const inputValue7 = priceInput7.value;
    const inputValue8 = priceInput8.value;
    const inputValue9 = priceInput9.value;
    const inputValue10 = priceInput10.value;
    const inputValue11 = priceInput11.value;
    const info = document.getElementById("item-info");
    const infoValue = info.value
    const incomePriceDom = document.getElementById("income-price");
    const outcomeDom = document.getElementById("outcome-price");
    const addPriceDom = document.getElementById("add-price");
    const sum2 = Number(inputValue1) + Number(inputValue2) + Number(inputValue3)
      + Number(inputValue4) + Number(inputValue5) + Number(inputValue6)
      + Number(inputValue7) + Number(inputValue8) + Number(inputValue9)
      + Number(inputValue10) + Number(inputValue11)
    const numberWithComma = new Intl.NumberFormat();
    incomePriceDom.innerHTML = numberWithComma.format(infoValue);
    outcomeDom.innerHTML = numberWithComma.format(sum2);
    addPriceDom.innerHTML = numberWithComma.format(Math.floor(infoValue - sum2));
  })
  priceInput3.addEventListener("input", () => {
    const inputValue1 = priceInput1.value;
    const inputValue2 = priceInput2.value;
    const inputValue3 = priceInput3.value;
    const inputValue4 = priceInput4.value;
    const inputValue5 = priceInput5.value;
    const inputValue6 = priceInput6.value;
    const inputValue7 = priceInput7.value;
    const inputValue8 = priceInput8.value;
    const inputValue9 = priceInput9.value;
    const inputValue10 = priceInput10.value;
    const inputValue11 = priceInput11.value;
    const info = document.getElementById("item-info");
    const infoValue = info.value
    const incomePriceDom = document.getElementById("income-price");
    const outcomeDom = document.getElementById("outcome-price");
    const addPriceDom = document.getElementById("add-price");
    const sum3 = Number(inputValue1) + Number(inputValue2) + Number(inputValue3)
      + Number(inputValue4) + Number(inputValue5) + Number(inputValue6)
      + Number(inputValue7) + Number(inputValue8) + Number(inputValue9)
      + Number(inputValue10) + Number(inputValue11)
    const numberWithComma = new Intl.NumberFormat();
    incomePriceDom.innerHTML = numberWithComma.format(infoValue);
    outcomeDom.innerHTML = numberWithComma.format(sum3);
    addPriceDom.innerHTML = numberWithComma.format(Math.floor(infoValue - sum3));
  })
  priceInput4.addEventListener("input", () => {
    const inputValue1 = priceInput1.value;
    const inputValue2 = priceInput2.value;
    const inputValue3 = priceInput3.value;
    const inputValue4 = priceInput4.value;
    const inputValue5 = priceInput5.value;
    const inputValue6 = priceInput6.value;
    const inputValue7 = priceInput7.value;
    const inputValue8 = priceInput8.value;
    const inputValue9 = priceInput9.value;
    const inputValue10 = priceInput10.value;
    const inputValue11 = priceInput11.value;
    const info = document.getElementById("item-info");
    const infoValue = info.value
    const incomePriceDom = document.getElementById("income-price");
    const outcomeDom = document.getElementById("outcome-price");
    const addPriceDom = document.getElementById("add-price");
    const sum4 = Number(inputValue1) + Number(inputValue2) + Number(inputValue3)
      + Number(inputValue4) + Number(inputValue5) + Number(inputValue6)
      + Number(inputValue7) + Number(inputValue8) + Number(inputValue9)
      + Number(inputValue10) + Number(inputValue11)
    const numberWithComma = new Intl.NumberFormat();
    incomePriceDom.innerHTML = numberWithComma.format(infoValue);
    outcomeDom.innerHTML = numberWithComma.format(sum4);
    addPriceDom.innerHTML = numberWithComma.format(Math.floor(infoValue - sum4));
  })
  priceInput5.addEventListener("input", () => {
    const inputValue1 = priceInput1.value;
    const inputValue2 = priceInput2.value;
    const inputValue3 = priceInput3.value;
    const inputValue4 = priceInput4.value;
    const inputValue5 = priceInput5.value;
    const inputValue6 = priceInput6.value;
    const inputValue7 = priceInput7.value;
    const inputValue8 = priceInput8.value;
    const inputValue9 = priceInput9.value;
    const inputValue10 = priceInput10.value;
    const inputValue11 = priceInput11.value;
    const info = document.getElementById("item-info");
    const infoValue = info.value
    const incomePriceDom = document.getElementById("income-price");
    const outcomeDom = document.getElementById("outcome-price");
    const addPriceDom = document.getElementById("add-price");
    const sum5 = Number(inputValue1) + Number(inputValue2) + Number(inputValue3)
      + Number(inputValue4) + Number(inputValue5) + Number(inputValue6)
      + Number(inputValue7) + Number(inputValue8) + Number(inputValue9)
      + Number(inputValue10) + Number(inputValue11)
    const numberWithComma = new Intl.NumberFormat();
    incomePriceDom.innerHTML = numberWithComma.format(infoValue);
    outcomeDom.innerHTML = numberWithComma.format(sum5);
    addPriceDom.innerHTML = numberWithComma.format(Math.floor(infoValue - sum5));
  })
  priceInput6.addEventListener("input", () => {
    const inputValue1 = priceInput1.value;
    const inputValue2 = priceInput2.value;
    const inputValue3 = priceInput3.value;
    const inputValue4 = priceInput4.value;
    const inputValue5 = priceInput5.value;
    const inputValue6 = priceInput6.value;
    const inputValue7 = priceInput7.value;
    const inputValue8 = priceInput8.value;
    const inputValue9 = priceInput9.value;
    const inputValue10 = priceInput10.value;
    const inputValue11 = priceInput11.value;
    const info = document.getElementById("item-info");
    const infoValue = info.value
    const incomePriceDom = document.getElementById("income-price");
    const outcomeDom = document.getElementById("outcome-price");
    const addPriceDom = document.getElementById("add-price");
    const sum6 = Number(inputValue1) + Number(inputValue2) + Number(inputValue3)
      + Number(inputValue4) + Number(inputValue5) + Number(inputValue6)
      + Number(inputValue7) + Number(inputValue8) + Number(inputValue9)
      + Number(inputValue10) + Number(inputValue11)
    const numberWithComma = new Intl.NumberFormat();
    incomePriceDom.innerHTML = numberWithComma.format(infoValue);
    outcomeDom.innerHTML = numberWithComma.format(sum6);
    addPriceDom.innerHTML = numberWithComma.format(Math.floor(infoValue - sum6));
  })
  priceInput7.addEventListener("input", () => {
    const inputValue1 = priceInput1.value;
    const inputValue2 = priceInput2.value;
    const inputValue3 = priceInput3.value;
    const inputValue4 = priceInput4.value;
    const inputValue5 = priceInput5.value;
    const inputValue6 = priceInput6.value;
    const inputValue7 = priceInput7.value;
    const inputValue8 = priceInput8.value;
    const inputValue9 = priceInput9.value;
    const inputValue10 = priceInput10.value;
    const inputValue11 = priceInput11.value;
    const info = document.getElementById("item-info");
    const infoValue = info.value
    const incomePriceDom = document.getElementById("income-price");
    const outcomeDom = document.getElementById("outcome-price");
    const addPriceDom = document.getElementById("add-price");
    const sum7 = Number(inputValue1) + Number(inputValue2) + Number(inputValue3)
      + Number(inputValue4) + Number(inputValue5) + Number(inputValue6)
      + Number(inputValue7) + Number(inputValue8) + Number(inputValue9)
      + Number(inputValue10) + Number(inputValue11)
    const numberWithComma = new Intl.NumberFormat();
    incomePriceDom.innerHTML = numberWithComma.format(infoValue);
    outcomeDom.innerHTML = numberWithComma.format(sum7);
    addPriceDom.innerHTML = numberWithComma.format(Math.floor(infoValue - sum7));
  })
  priceInput8.addEventListener("input", () => {
    const inputValue1 = priceInput1.value;
    const inputValue2 = priceInput2.value;
    const inputValue3 = priceInput3.value;
    const inputValue4 = priceInput4.value;
    const inputValue5 = priceInput5.value;
    const inputValue6 = priceInput6.value;
    const inputValue7 = priceInput7.value;
    const inputValue8 = priceInput8.value;
    const inputValue9 = priceInput9.value;
    const inputValue10 = priceInput10.value;
    const inputValue11 = priceInput11.value;
    const info = document.getElementById("item-info");
    const infoValue = info.value
    const incomePriceDom = document.getElementById("income-price");
    const outcomeDom = document.getElementById("outcome-price");
    const addPriceDom = document.getElementById("add-price");
    const sum8 = Number(inputValue1) + Number(inputValue2) + Number(inputValue3)
      + Number(inputValue4) + Number(inputValue5) + Number(inputValue6)
      + Number(inputValue7) + Number(inputValue8) + Number(inputValue9)
      + Number(inputValue10) + Number(inputValue11)
    const numberWithComma = new Intl.NumberFormat();
    incomePriceDom.innerHTML = numberWithComma.format(infoValue);
    outcomeDom.innerHTML = numberWithComma.format(sum8);
    addPriceDom.innerHTML = numberWithComma.format(Math.floor(infoValue - sum8));
  })
  priceInput9.addEventListener("input", () => {
    const inputValue1 = priceInput1.value;
    const inputValue2 = priceInput2.value;
    const inputValue3 = priceInput3.value;
    const inputValue4 = priceInput4.value;
    const inputValue5 = priceInput5.value;
    const inputValue6 = priceInput6.value;
    const inputValue7 = priceInput7.value;
    const inputValue8 = priceInput8.value;
    const inputValue9 = priceInput9.value;
    const inputValue10 = priceInput10.value;
    const inputValue11 = priceInput11.value;
    const info = document.getElementById("item-info");
    const infoValue = info.value
    const incomePriceDom = document.getElementById("income-price");
    const outcomeDom = document.getElementById("outcome-price");
    const addPriceDom = document.getElementById("add-price");
    const sum9 = Number(inputValue1) + Number(inputValue2) + Number(inputValue3)
      + Number(inputValue4) + Number(inputValue5) + Number(inputValue6)
      + Number(inputValue7) + Number(inputValue8) + Number(inputValue9)
      + Number(inputValue10) + Number(inputValue11)
    const numberWithComma = new Intl.NumberFormat();
    incomePriceDom.innerHTML = numberWithComma.format(infoValue);
    outcomeDom.innerHTML = numberWithComma.format(sum9);
    addPriceDom.innerHTML = numberWithComma.format(Math.floor(infoValue - sum9));
  })
  priceInput10.addEventListener("input", () => {
    const inputValue1 = priceInput1.value;
    const inputValue2 = priceInput2.value;
    const inputValue3 = priceInput3.value;
    const inputValue4 = priceInput4.value;
    const inputValue5 = priceInput5.value;
    const inputValue6 = priceInput6.value;
    const inputValue7 = priceInput7.value;
    const inputValue8 = priceInput8.value;
    const inputValue9 = priceInput9.value;
    const inputValue10 = priceInput10.value;
    const inputValue11 = priceInput11.value;
    const info = document.getElementById("item-info");
    const infoValue = info.value
    const incomePriceDom = document.getElementById("income-price");
    const outcomeDom = document.getElementById("outcome-price");
    const addPriceDom = document.getElementById("add-price");
    const sum10 = Number(inputValue1) + Number(inputValue2) + Number(inputValue3)
      + Number(inputValue4) + Number(inputValue5) + Number(inputValue6)
      + Number(inputValue7) + Number(inputValue8) + Number(inputValue9)
      + Number(inputValue10) + Number(inputValue11)
    const numberWithComma = new Intl.NumberFormat();
    incomePriceDom.innerHTML = numberWithComma.format(infoValue);
    outcomeDom.innerHTML = numberWithComma.format(sum10);
    addPriceDom.innerHTML = numberWithComma.format(Math.floor(infoValue - sum10));
  })
  priceInput11.addEventListener("input", () => {
    const inputValue1 = priceInput1.value;
    const inputValue2 = priceInput2.value;
    const inputValue3 = priceInput3.value;
    const inputValue4 = priceInput4.value;
    const inputValue5 = priceInput5.value;
    const inputValue6 = priceInput6.value;
    const inputValue7 = priceInput7.value;
    const inputValue8 = priceInput8.value;
    const inputValue9 = priceInput9.value;
    const inputValue10 = priceInput10.value;
    const inputValue11 = priceInput11.value;
    const info = document.getElementById("item-info");
    const infoValue = info.value
    const incomePriceDom = document.getElementById("income-price");
    const outcomeDom = document.getElementById("outcome-price");
    const addPriceDom = document.getElementById("add-price");
    const sum11 = Number(inputValue1) + Number(inputValue2) + Number(inputValue3)
      + Number(inputValue4) + Number(inputValue5) + Number(inputValue6)
      + Number(inputValue7) + Number(inputValue8) + Number(inputValue9)
      + Number(inputValue10) + Number(inputValue11)
    const numberWithComma = new Intl.NumberFormat();
    incomePriceDom.innerHTML = numberWithComma.format(infoValue);
    outcomeDom.innerHTML = numberWithComma.format(sum11);
    addPriceDom.innerHTML = numberWithComma.format(Math.floor(infoValue - sum11));
  })
});