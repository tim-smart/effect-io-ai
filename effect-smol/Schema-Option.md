Package: `effect`<br />
Module: `Schema`<br />

## Schema.Option

Type-level representation returned by `Option`.

**Signature**

```ts
export interface Option<A extends Constraint> extends
  declareConstructor<
    Option_.Option<A["Type"]>,
    Option_.Option<A["Encoded"]>,
    readonly [A],
    OptionIso<A>
  >
{
  readonly "Rebuild": Option<A>
  readonly value: A
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8453)

Since v3.10.0