Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipWithArray

Zips two streams by applying a function to non-empty arrays of elements.

The function returns output plus leftover arrays that carry into the next pull.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Stream.zipWithChunks`

**Example**

```ts
import { Array, Console, Effect, Stream } from "effect"

const left = Stream.fromArrays([1, 2, 3], [4, 5])
const right = Stream.fromArrays(["a", "b"], ["c", "d", "e"])

const zipped = Stream.zipWithArray(left, right, (leftChunk, rightChunk) => {
  const minLength = Math.min(leftChunk.length, rightChunk.length)
  const output = Array.makeBy(minLength, (i) => [leftChunk[i], rightChunk[i]] as const)

  return [output, leftChunk.slice(minLength), rightChunk.slice(minLength)]
})

const program = Effect.gen(function*() {
  const result = yield* Stream.runCollect(zipped)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [[1, "a"], [2, "b"], [3, "c"], [4, "d"], [5, "e"]]
```

**Signature**

```ts
declare const zipWithArray: { <AR, ER, RR, AL, A>(right: Stream<AR, ER, RR>, f: (left: Arr.NonEmptyReadonlyArray<AL>, right: Arr.NonEmptyReadonlyArray<AR>) => readonly [output: Arr.NonEmptyReadonlyArray<A>, leftoverLeft: ReadonlyArray<AL>, leftoverRight: ReadonlyArray<AR>]): <EL, RL>(left: Stream<AL, EL, RL>) => Stream<A, EL | ER, RL | RR>; <AL, EL, RL, AR, ER, RR, A>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>, f: (left: Arr.NonEmptyReadonlyArray<AL>, right: Arr.NonEmptyReadonlyArray<AR>) => readonly [output: Arr.NonEmptyReadonlyArray<A>, leftoverLeft: ReadonlyArray<AL>, leftoverRight: ReadonlyArray<AR>]): Stream<A, EL | ER, RL | RR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3259)

Since v2.0.0