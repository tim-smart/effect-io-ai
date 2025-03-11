## Effect

The `Effect` interface defines a value that describes a workflow or job,
which can succeed or fail.

**Details**

The `Effect` interface represents a computation that can model a workflow
involving various types of operations, such as synchronous, asynchronous,
concurrent, and parallel interactions. It operates within a context of type
`R`, and the result can either be a success with a value of type `A` or a
failure with an error of type `E`. The `Effect` is designed to handle complex
interactions with external resources, offering advanced features such as
fiber-based concurrency, scheduling, interruption handling, and scalability.
This makes it suitable for tasks that require fine-grained control over
concurrency and error management.

To execute an `Effect` value, you need a `Runtime`, which provides the
environment necessary to run and manage the computation.

**Signature**

```ts
export interface Effect<out A, out E = never, out R = never> extends Effect.Variance<A, E, R>, Pipeable {
  readonly [Unify.typeSymbol]?: unknown
  readonly [Unify.unifySymbol]?: EffectUnify<this>
  readonly [Unify.ignoreSymbol]?: EffectUnifyIgnore
  [Symbol.iterator](): EffectGenerator<Effect<A, E, R>>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L101)

Since v2.0.0