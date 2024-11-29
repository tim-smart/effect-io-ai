# failCause

Creates a `Micro` effect that will fail with the specified `MicroCause`.

To import and use `failCause` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.failCause
undefined

**Signature**

```ts
export declare const failCause: <E>(cause: MicroCause<E>) => Micro<never, E>
```
