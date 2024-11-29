# try

The `Micro` equivalent of a try / catch block, which allows you to map
thrown errors to a specific error type.

To import and use `try` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.try
undefined

**Example**

```ts
import { Micro } from "effect"

Micro.try({
  try: () => throw new Error("boom"),
  catch: (cause) => new Error("caught", { cause })
})
```
