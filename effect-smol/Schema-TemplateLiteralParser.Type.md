Package: `effect`<br />
Module: `Schema`<br />

## Schema.TemplateLiteralParser.Type

Computes the decoded tuple type produced by `TemplateLiteralParser`.

**Details**

Literal parts contribute their literal value to the tuple. Schema parts
contribute their decoded `Type`.

**Signature**

```ts
type Type<Parts> = Parts extends readonly [infer Head, ...infer Tail] ? readonly [
      Head extends TemplateLiteral.LiteralPart ? Head :
        Head extends Codec<infer T, unknown, unknown, unknown> ? T
        : never,
      ...Type<Tail>
    ]
    : []
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2431)

Since v3.10.0