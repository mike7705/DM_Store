// Обработка кнопок инкремента и декремента количества
/*
let someCountBlocks = document.querySelectorAll('.__some-count-block')
for (let index = 0; index < someCountBlocks.length; index++) {
    let countBlock = someCountBlocks[index]
    countBlock.addEventListener("click", function (e) {
        let target = e.target
        let input
        if (target.classList.contains(".count-dec")) {
            input = target.nextElementSibling
            if (input !== null && input.classList.contains("count-input")) {
                let val = parseInt(input.value, 10)
                console.log(input.value, val)
                if (val > 1) input.value = val - 1
            }
        } else if (target.classList.contains(".count-inc")) {
            input = target.previousElementSibling
            if (input !== null && input.classList.contains("count-input")) {
                let val = parseInt(input.value, 10)
                console.log(input.value, val)
                input.value = val + 1
            }
        }
    })

    $(countBlock).on('focusin', function () {
        console.log("Saving value " + $(this).val());
        $(this).data('val', $(this).val());
    })
    $(countBlock).on('change', function () {
        var prev = $(this).data('val');
        var current = $(this).val();
        console.log("Prev value " + prev);
        console.log("New value " + current);
    })


    countBlock.addEventListener("change",function (e){
        let target = e.target
        if (target.classList.contains(".count-input")){
            let pattern = '/^[1-9]{1}[0-9]*$/gm'

        }
    }


}
let someCountBlocks = document.querySelectorAll('.__some-count-block')
for (let index = 0; index < someCountBlocks.length; index++) {
    let countBlock = someCountBlocks[index]
    $(countBlock).on("change", 'input', function (e) {
        let target = e.target
        console.log(target)
    })
}*/