Package: `effect`<br />
Module: `Exit`<br />

## Exit.Success

Represents a successful `Effect` workflow and containing the returned value
of type `A`.

**Signature**

```ts
export interface Success<out A, out E> extends Effect.Effect<A, E>, Pipeable, Inspectable {
  readonly _tag: "Success"
  readonly _op: "Success"
  readonly value: A
  [Unify.typeSymbol]?: unknown
  [Unify.unifySymbol]?: ExitUnify<this>
  [Unify.ignoreSymbol]?: ExitUnifyIgnore
  /** @internal */
  readonly effect_instruction_i0: A
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L69)

Since v2.0.0