# succeedSome

Creates a `Micro` effect that will succeed with the value wrapped in `Some`.

To import and use `succeedSome` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.succeedSome
```

**Signature**

```ts
export declare const succeedSome: <A>(a: A) => Micro<Option.Option<A>>
```
