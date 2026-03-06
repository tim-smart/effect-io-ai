Package: `effect`<br />
Module: `Data`<br />

## Data.TaggedEnum.GenericMatchers

Type-guard and pattern-matching interface for generic tagged enums.

This is the `$is` / `$match` portion of the object returned by
`taggedEnum` when used with a `WithGenerics` definition.

**See**

- `Constructor` — the non-generic equivalent

**Signature**

```ts
export interface GenericMatchers<Z extends WithGenerics<number>> {
    readonly $is: <Tag extends Z["taggedEnum"]["_tag"]>(
      tag: Tag
    ) => {
      <T extends TaggedEnum.Kind<Z, any, any, any, any>>(
        u: T
      ): u is T & { readonly _tag: Tag }
      (u: unknown): u is Extract<TaggedEnum.Kind<Z>, { readonly _tag: Tag }>
    }
    readonly $match: {
      <
        A,
        B,
        C,
        D,
        Cases extends {
          readonly [Tag in Z["taggedEnum"]["_tag"]]: (
            args: Extract<
              TaggedEnum.Kind<Z, A, B, C, D>,
              { readonly _tag: Tag }
            >
          ) => any
        }
      >(
        cases: Cases
      ): (
        self: TaggedEnum.Kind<Z, A, B, C, D>
      ) => Unify<ReturnType<Cases[Z["taggedEnum"]["_tag"]]>>
      <
        A,
        B,
        C,
        D,
        Cases extends {
          readonly [Tag in Z["taggedEnum"]["_tag"]]: (
            args: Extract<
              TaggedEnum.Kind<Z, A, B, C, D>,
              { readonly _tag: Tag }
            >
          ) => any
        }
      >(
        self: TaggedEnum.Kind<Z, A, B, C, D>,
        cases: Cases
      ): Unify<ReturnType<Cases[Z["taggedEnum"]["_tag"]]>>
    }
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Data.ts#L478)

Since v3.2.0