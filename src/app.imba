var store = {
    title: ""
    items: [
        {title: "git clone imba2-hello-world", completed: false}
        {title: "npm install", completed: false}
        {title: "npm run dev", completed: false}
        {title: "learn Imba v2", completed: false}
        {title: "play around", completed: false}
    ]
}

tag app-root
    def addItem
        store.items.push(title: store.title)

    def completeItem item
        item.completed = !item.completed

    def render
        <self>
            <div .vbox>
                <header>
                    <input[store.title] placeholder="New..." :keyup.enter.addItem>
                    <button :click.addItem> 'Add item'
                <ul> for item in store.items
                    <li .completed=(item.completed) :click.completeItem(item)> item.title

imba.mount <app-root>

### scss
    html,body {
        width: 100%;
        height: 100%;
        margin: 0px;
        font-family: Arial;
    }

    body {
        display: flex;
        font-size: 14px;
        align-items: stretch;
        justify-content: center;
        flex-direction: column;
        background: whitesmoke;
        padding: 30px;
    }

    app-root {
        width: 100%;
        height: 100%;
        background: white;
    }

    :focus { outline: none !important; }

    .vbox {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: stretch;
    }


    body,div,form,header,footer,section,input,button,nav,aside,article {
        box-sizing: border-box;
    }

    div,section,input,ul,main,article,.grow {
        flex: 1 1 auto;
    }

    input {
        display: block;
        padding: 0px 12px;
        background: transparent;
        border: none;
        font-size: inherit;
        width: 50px;
        height: 24px;
    }

    button {
        -webkit-appearance: none;
        background: #4a95eb;
        font-size: 13px;
        display: flex;
        align-items: center;
        justify-content: center;
        border: 0px;
        padding: 2px 10px;
        border-radius: 2px;
        color: white;
        margin: 0px 4px;
        flex: 0 0 auto;
        height: 24px;
    }

    button:hover {
        background: #3a8eef;
    }

    header,footer {
        flex: 0 0 auto;
        display: flex;
        flex-direction: row;
        justify-content: flex-start;
        align-items: center;
        padding: 10px 6px;
        background: #e8e8e8;
    }

    ul {
        list-style: none inside none;
        margin: 0;
        padding: 0;
        padding: 10px;
    }

    .completed {
        text-decoration: line-through;
    }

    li {
        padding: 8px 12px;
        display: flex;
        flex-direction: row;
        justify-content: flex-start;
        align-items: center;
        border-bottom: 1px solid whitesmoke;
    }
###

