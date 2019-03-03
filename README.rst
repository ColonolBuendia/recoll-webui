Quick and ugly changes to the css to make it mobile friendly-ish. Key things if you are editing it yourself are:
    header.tpl:
        <meta name="viewport" content="width=device-width, initial-scale=1">
    results.tpl - in the results div :
          style="word-break: break-word;" 
      
see here: https://developer.mozilla.org/en-US/docs/Web/CSS/word-break
      
