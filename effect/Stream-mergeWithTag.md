# mergeWithTag

Merges a struct of streams into a single stream of tagged values.

To import and use `mergeWithTag` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.mergeWithTag
```

**Example**

```ts
import { Stream } from "effect"
// Stream.Stream<{ _tag: "a"; value: number; } | { _tag: "b"; value: string; }>
const res = Stream.mergeWithTag(
  {
    a: Stream.make(0),
    b: Stream.make("")
  },
  { concurrency: "unbounded" }
)
```

**Signature**

```ts
export declare const mergeWithTag: {
  <S extends { [k in string]: Stream<any, any, any> }>(
    streams: S,
    options: { readonly concurrency: number | "unbounded"; readonly bufferSize?: number | undefined }
  ): Stream<
    { [K in keyof S]: { _tag: K; value: Stream.Success<S[K]> } }[keyof S],
    Stream.Error<S[keyof S]>,
    Stream.Context<S[keyof S]>
  >
  (options: {
    readonly concurrency: number | "unbounded"
    readonly bufferSize?: number | undefined
  }): <S extends { [k in string]: Stream<any, any, any> }>(
    streams: S
  ) => Stream<
    { [K in keyof S]: { _tag: K; value: Stream.Success<S[K]> } }[keyof S],
    Stream.Error<S[keyof S]>,
    Stream.Context<S[keyof S]>
  >
}
```