# succeedSome

Creates a `Micro` effect that will succeed with `Option.Some` of the value.

To import and use `succeedSome` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.succeedSome
undefined

**Signature**

```ts
export declare const succeedSome: <A>(a: A) => Micro<Option.Option<A>>
```
