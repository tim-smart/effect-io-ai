Package: `effect`<br />
Module: `Exit`<br />

## Exit.Failure

Represents a failed `Effect` workflow containing the `Cause` of the failure
of type `E`.

**Signature**

```ts
export interface Failure<out A, out E> extends Effect.Effect<A, E>, Pipeable, Inspectable {
  readonly _tag: "Failure"
  readonly _op: "Failure"
  readonly cause: Cause.Cause<E>
  [Unify.typeSymbol]?: unknown
  [Unify.unifySymbol]?: ExitUnify<this>
  [Unify.ignoreSymbol]?: ExitUnifyIgnore
  /** @internal */
  readonly effect_instruction_i0: Cause.Cause<E>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L35)

Since v2.0.0