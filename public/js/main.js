// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let userButtons = document.querySelectorAll('.d-link'),
        lightBox = document.querySelector('.lightbox');
  
    
    function parseUserData(info) {
        let targetDiv = lightBox.querySelector('.lb-content'),
            targetImg = lightBox.querySelector('img');

        let proContent = `
            <h2>Name: ${info.name}</h2>
            <p>Calories: ${info.Calories}</p>
            <p>Carbohydrates: ${info. Carbohydrates}</p>
            <p>Total Sugar: ${info.TotalSugar}</p>
            <p>Protein: ${info.Protein}</p>
            <p>Total Fat: ${info.TotalFat}</p>
            <p>Vitamin C: ${info.VitaminC}</p>
            <p>Calcium: ${info.Calcium}</p>
            <p>Iron: ${info.Iron}</p>
            <p>Magnesium: ${info.Magnesium}</p>`;

        targetDiv.innerHTML = proContent;
        targetImg.src = info.currentSrc;

        lightBox.classList.add('show-lb');
    };

    function getUserData(event) {
        event.preventDefault();
        //debugger;
        // 1, 2, or 3 depending on which anchor tag you click
        let url = `/info/${this.getAttribute('href')}`,
            currentImg = this.firstElementChild.getAttribute('src');


        // this goes and fetxhes the datbase content (or and API endpoint)
        // that's why it's called a fetch!
        fetch(url)
            .then(res => res.json())
            .then(data => {
                console.log(data);
                data.currentSrc = currentImg;
                parseUserData(data);
            })
            .catch((err) => console.log(err));
    }

    userButtons.forEach(button => button.addEventListener("click", getUserData))

    // wire up the lightbox close button
    lightBox.querySelector('.close').addEventListener("click", function(){
        lightBox.classList.remove('show-lb');
    });

})();