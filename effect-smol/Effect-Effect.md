Package: `effect`<br />
Module: `Effect`<br />

## Effect.Effect

The `Effect` interface defines a value that lazily describes a workflow or
job. The workflow requires some context `R`, and may fail with an error of
type `E`, or succeed with a value of type `A`.

**When to use**

Use when you need to represent a lazy, composable workflow that can require
services, fail with a typed error, or succeed with a typed value.

**Details**

`Effect` values model resourceful interaction with the outside world,
including synchronous, asynchronous, concurrent, and parallel interaction.
They use a fiber-based concurrency model, with built-in support for
scheduling, fine-grained interruption, structured concurrency, and high
scalability.

To run an `Effect` value, you need a `Runtime`, which is a type that is
capable of executing `Effect` values.

**Signature**

```ts
export interface Effect<out A, out E = never, out R = never> extends Pipeable, Inspectable {
  readonly [TypeId]: Variance<A, E, R>
  [Symbol.iterator](): EffectIterator<Effect<A, E, R>>
  [Unify.typeSymbol]?: unknown
  [Unify.unifySymbol]?: EffectUnify<this>
  [Unify.ignoreSymbol]?: {}
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L116)

Since v2.0.0