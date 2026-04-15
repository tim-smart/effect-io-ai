Package: `effect`<br />
Module: `Completions`<br />

## Completions.ArgumentDescriptor

Describes a positional argument for completions.

**Signature**

```ts
export interface ArgumentDescriptor {
  readonly name: string
  readonly description: string | undefined
  readonly required: boolean
  readonly variadic: boolean
  readonly type: ArgumentType
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Completions.ts#L66)

Since v4.0.0