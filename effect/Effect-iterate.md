# iterate

The `Effect.iterate` function allows you to iterate with an effectful operation. It uses an effectful `body` operation to change the state during each iteration and continues the iteration as long as the `while` function evaluates to `true`:

```ts
Effect.iterate(initial, options: { while, body })
```

We can think of `Effect.iterate` as equivalent to a `while` loop in JavaScript:

```ts
let result = initial

while (options.while(result)) {
  result = options.body(result)
}

return result
```

To import and use `iterate` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.iterate
```

**Signature**

```ts
export declare const iterate: {
  <A, B extends A, R, E>(
    initial: A,
    options: { readonly while: Refinement<A, B>; readonly body: (b: B) => Effect<R, E, A> }
  ): Effect<R, E, A>
  <A, R, E>(
    initial: A,
    options: { readonly while: (a: A) => boolean; readonly body: (a: A) => Effect<R, E, A> }
  ): Effect<R, E, A>
}
```
