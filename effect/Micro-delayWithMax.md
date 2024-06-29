# delayWithMax

Transform a `DelayFn` to one that will have a duration that will never exceed
the specified maximum.

To import and use `delayWithMax` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.delayWithMax
```

**Signature**

```ts
export declare const delayWithMax: { (max: number): (self: DelayFn) => DelayFn; (self: DelayFn, max: number): DelayFn }
```
