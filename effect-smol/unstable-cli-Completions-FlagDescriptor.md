Package: `effect`<br />
Module: `Completions`<br />

## Completions.FlagDescriptor

Describes a command flag for completions.

**Signature**

```ts
export interface FlagDescriptor {
  readonly name: string
  readonly aliases: ReadonlyArray<string>
  readonly description: string | undefined
  readonly type: FlagType
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Completions.ts#L38)

Since v4.0.0