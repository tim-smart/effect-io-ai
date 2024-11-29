# option

Replace the success value of the given `Micro` effect with an `Option`,
wrapping the success value in `Some` and returning `None` if the effect fails
with an expected error.

To import and use `option` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.option
undefined

**Signature**

```ts
export declare const option: <A, E, R>(self: Micro<A, E, R>) => Micro<Option.Option<A>, never, R>
```
