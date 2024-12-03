# asVoid

Replace the success value of the `Micro` effect with `void`.

To import and use `asVoid` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.asVoid
```

**Signature**

```ts
export declare const asVoid: <A, E, R>(self: Micro<A, E, R>) => Micro<void, E, R>
```
