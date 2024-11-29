# mapAccum

Applies a stateful transformation to each element of a collection, producing
new elements along with an updated state.

**When to Use**

Use `mapAccum` when you need to process each element of a collection while
keeping track of some state across iterations.

**Details**

`mapAccum` takes an initial state (`initial`) and a function (`f`) that is
applied to each element. This function returns a new state and a transformed
element. The final effect produces both the accumulated state and the
transformed collection.

If the input collection is a non-empty array, the return type will match the
input collection type.

To import and use `mapAccum` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.mapAccum
undefined

**Example**

```ts
import { Effect } from "effect"

// Define an initial state and a transformation function
const initialState = 0

const transformation = (state: number, element: string) =>
  Effect.succeed<[number, string]>([state + element.length, element.toUpperCase()])

// Apply mapAccum to transform an array of strings
const program = Effect.mapAccum(["a", "bb", "ccc"], initialState, transformation)

Effect.runPromise(program).then(([finalState, transformedCollection]) => {
  console.log(finalState)
  console.log(transformedCollection)
})
// Output:
// 6
// [ 'A', 'BB', 'CCC' ]
```

**Signature**

```ts
export declare const mapAccum: {
  <S, A, B, E, R, I extends Iterable<A> = Iterable<A>>(
    initial: S,
    f: (state: S, a: RA.ReadonlyArray.Infer<I>, i: number) => Effect<readonly [S, B], E, R>
  ): (elements: I) => Effect<[S, RA.ReadonlyArray.With<I, B>], E, R>
  <A, S, B, E, R, I extends Iterable<A> = Iterable<A>>(
    elements: I,
    initial: S,
    f: (state: S, a: RA.ReadonlyArray.Infer<I>, i: number) => Effect<readonly [S, B], E, R>
  ): Effect<[S, RA.ReadonlyArray.With<I, B>], E, R>
}
```
