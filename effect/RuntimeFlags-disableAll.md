# disableAll

Disables all of the `RuntimeFlag`s in the specified set of `RuntimeFlags`.

To import and use `disableAll` from the "RuntimeFlags" module:

ts
import \* as RuntimeFlags from "effect/RuntimeFlags"
// Can be accessed like this
RuntimeFlags.disableAll
undefined

**Signature**

```ts
export declare const disableAll: {
  (flags: RuntimeFlags): (self: RuntimeFlags) => RuntimeFlags
  (self: RuntimeFlags, flags: RuntimeFlags): RuntimeFlags
}
```
