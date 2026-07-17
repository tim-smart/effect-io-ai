Package: `effect`<br />
Module: `Param`<br />

## Param.Single

Leaf parameter that reads one named argument or flag with a primitive parser.

**Details**

Single parameters carry the user-facing name, aliases, description, primitive
type, and optional metavar/type name used in help output.

**Signature**

```ts
export interface Single<Kind extends ParamKind, out A> extends Param<Kind, A> {
  readonly _tag: "Single"
  readonly kind: Kind
  readonly name: string
  readonly description: Option.Option<string>
  readonly aliases: ReadonlyArray<string>
  readonly primitiveType: Primitive.Primitive<A>
  readonly typeName?: string | undefined
  readonly hidden: boolean
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Param.ts#L192)

Since v4.0.0