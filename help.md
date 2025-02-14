## Stack Overflow Format

### JS Code solution format:
```
<!-- begin snippet: js hide: false console: true babel: false -->

<!-- language: lang-js -->

    [... new Set([2,4,6,4,6])]
    .sort()
    .map((n, i, arr) => arr.map(m => {if(n<=m ) return {x: n, y: m}}))
    .flat()
    .filter(x => x)
    .filter(el => (el.x+el.y === 8))

<!-- end snippet -->
```