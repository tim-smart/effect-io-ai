# collectAllWhile

Accumulates incoming elements into a chunk as long as they verify predicate
`p`.

To import and use `collectAllWhile` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.collectAllWhile
undefined

**Signature**

```ts
export declare const collectAllWhile: {
  <In, Out extends In>(refinement: Refinement<In, Out>): Sink<Chunk.Chunk<Out>, In, In>
  <In>(predicate: Predicate<In>): Sink<Chunk.Chunk<In>, In, In>
}
```
