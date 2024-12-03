# isLogger

Returns `true` if the specified value is a `Logger`, otherwise returns `false`.

To import and use `isLogger` from the "Logger" module:

```ts
import * as Logger from "effect/Logger"
// Can be accessed like this
Logger.isLogger
```

**Signature**

```ts
export declare const isLogger: (u: unknown) => u is Logger<unknown, unknown>
```
