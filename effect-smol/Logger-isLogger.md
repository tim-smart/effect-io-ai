Package: `effect`<br />
Module: `Logger`<br />

## Logger.isLogger

Returns `true` if the specified value is a `Logger`, otherwise returns `false`.

**Example**

```ts
import { Logger } from "effect"

const myLogger = Logger.make((options) => {
  console.log(options.message)
})

console.log(Logger.isLogger(myLogger)) // true
console.log(Logger.isLogger("not a logger")) // false
console.log(Logger.isLogger({ log: () => {} })) // false
```

**Signature**

```ts
declare const isLogger: (u: unknown) => u is Logger<unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L203)

Since v2.0.0