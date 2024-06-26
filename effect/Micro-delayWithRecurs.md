# delayWithRecurs

Transform a `DelayFn` to one that will stop repeating after the specified
number of attempts.

To import and use `delayWithRecurs` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.delayWithRecurs
```

**Signature**

```ts
export declare const delayWithRecurs: { (n: number): (self: DelayFn) => DelayFn; (self: DelayFn, n: number): DelayFn }
```
