# foldUntil

Creates a sink that folds elements of type `In` into a structure of type
`S` until `max` elements have been folded.

Like `Sink.foldWeighted`, but with a constant cost function of `1`.

To import and use `foldUntil` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.foldUntil
```

**Signature**

```ts
export declare const foldUntil: <In, S>(s: S, max: number, f: (s: S, input: In) => S) => Sink<S, In, In>
```
