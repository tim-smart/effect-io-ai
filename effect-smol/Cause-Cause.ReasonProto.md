Package: `effect`<br />
Module: `Cause`<br />

## Cause.Cause.ReasonProto

Base interface shared by all reason types (`Fail`, `Die`,
`Interrupt`).

Every reason carries:
- `_tag` — discriminant string (`"Fail"`, `"Die"`, or `"Interrupt"`)
- `annotations` — tracing metadata attached by the runtime
- `annotate()` — returns a copy with additional annotations

**Signature**

```ts
export interface ReasonProto<Tag extends string> extends Inspectable, Equal {
    readonly [ReasonTypeId]: typeof ReasonTypeId
    readonly _tag: Tag
    readonly annotations: ReadonlyMap<string, unknown>
    annotate(annotations: Context.Context<never> | ReadonlyMap<string, unknown>, options?: {
      readonly overwrite?: boolean | undefined
    }): this
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L318)

Since v4.0.0