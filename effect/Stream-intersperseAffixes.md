# intersperseAffixes

Intersperse the specified element, also adding a prefix and a suffix.

To import and use `intersperseAffixes` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.intersperseAffixes
undefined

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3, 4, 5).pipe(
  Stream.intersperseAffixes({
    start: "[",
    middle: "-",
    end: "]"
  })
)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// {
//   _id: 'Chunk',
//   values: [
//     '[', 1,   '-', 2,   '-',
//     3,   '-', 4,   '-', 5,
//     ']'
//   ]
// }
```

**Signature**

```ts
export declare const intersperseAffixes: {
  <A2, A3, A4>(options: {
    readonly start: A2
    readonly middle: A3
    readonly end: A4
  }): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A3 | A4 | A, E, R>
  <A, E, R, A2, A3, A4>(
    self: Stream<A, E, R>,
    options: { readonly start: A2; readonly middle: A3; readonly end: A4 }
  ): Stream<A | A2 | A3 | A4, E, R>
}
```
