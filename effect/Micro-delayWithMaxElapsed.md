# delayWithMaxElapsed

Transform a `DelayFn` to one that will stop repeating after the specified
amount of time.

To import and use `delayWithMaxElapsed` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.delayWithMaxElapsed
```

**Signature**

```ts
export declare const delayWithMaxElapsed: {
  (max: number): (self: DelayFn) => DelayFn
  (self: DelayFn, max: number): DelayFn
}
```
