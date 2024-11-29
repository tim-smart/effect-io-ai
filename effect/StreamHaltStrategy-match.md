# match

Folds over the specified `HaltStrategy` using the provided case functions.

To import and use `match` from the "StreamHaltStrategy" module:

ts
import \* as StreamHaltStrategy from "effect/StreamHaltStrategy"
// Can be accessed like this
StreamHaltStrategy.match
undefined

**Signature**

```ts
export declare const match: {
  <Z>(options: {
    readonly onLeft: () => Z
    readonly onRight: () => Z
    readonly onBoth: () => Z
    readonly onEither: () => Z
  }): (self: HaltStrategy) => Z
  <Z>(
    self: HaltStrategy,
    options: {
      readonly onLeft: () => Z
      readonly onRight: () => Z
      readonly onBoth: () => Z
      readonly onEither: () => Z
    }
  ): Z
}
```
