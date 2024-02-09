# eventually

Returns an effect that ignores errors and runs repeatedly until it
eventually succeeds.

To import and use `eventually` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.eventually
```

**Signature**

```ts
export declare const eventually: <A, E, R>(self: STM<A, E, R>) => STM<A, E, R>
```
