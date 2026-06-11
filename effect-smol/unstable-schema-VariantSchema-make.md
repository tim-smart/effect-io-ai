Package: `effect`<br />
Module: `VariantSchema`<br />

## VariantSchema.make

Creates a variant schema toolkit for a fixed set of variant names and a default
variant.

**Signature**

```ts
declare const make: <const Variants extends ReadonlyArray<string>, const Default extends Variants[number]>(options: { readonly variants: Variants; readonly defaultVariant: Default; }) => { readonly Struct: <const A extends Struct.Fields>(fields: A & Struct.Validate<A, Variants[number]>) => Struct<A>; readonly Field: <const A extends Field.ConfigWithKeys<Variants[number]>>(config: A & { readonly [K in Exclude<keyof A, Variants[number]>]: never; }) => Field<A>; readonly FieldOnly: <const Keys extends ReadonlyArray<Variants[number]>>(keys: Keys) => <S extends Schema.Top>(schema: S) => Field<{ readonly [K in Keys[number]]: S; }>; readonly FieldExcept: <const Keys extends ReadonlyArray<Variants[number]>>(keys: Keys) => <S extends Schema.Top>(schema: S) => Field<{ readonly [K in Exclude<Variants[number], Keys[number]>]: S; }>; readonly fieldEvolve: { <Self extends Field<any> | Schema.Top, const Mapping extends (Self extends Field<infer S> ? { readonly [K in keyof S]?: (variant: S[K]) => Schema.Top; } : { readonly [K in Variants[number]]?: (variant: Self) => Schema.Top; })>(f: Mapping): (self: Self) => Field<Self extends Field<infer S> ? { readonly [K in keyof S]: K extends keyof Mapping ? Mapping[K] extends (arg: any) => any ? ReturnType<Mapping[K]> : S[K] : S[K]; } : { readonly [K in Variants[number]]: K extends keyof Mapping ? Mapping[K] extends (arg: any) => any ? ReturnType<Mapping[K]> : Self : Self; }>; <Self extends Field<any> | Schema.Top, const Mapping extends (Self extends Field<infer S> ? { readonly [K in keyof S]?: (variant: S[K]) => Schema.Top; } : { readonly [K in Variants[number]]?: (variant: Self) => Schema.Top; })>(self: Self, f: Mapping): Field<Self extends Field<infer S> ? { readonly [K in keyof S]: K extends keyof Mapping ? Mapping[K] extends (arg: any) => any ? ReturnType<Mapping[K]> : S[K] : S[K]; } : { readonly [K in Variants[number]]: K extends keyof Mapping ? Mapping[K] extends (arg: any) => any ? ReturnType<Mapping[K]> : Self : Self; }>; }; readonly Class: <Self = never>(identifier: string) => <const Fields extends Struct.Fields>(fields: Fields & Struct.Validate<Fields, Variants[number]>, annotations?: Schema.Annotations.Declaration<Self, readonly [Schema.Struct<ExtractFields<Default, Fields, true>>]> | undefined) => [Self] extends [never] ? MissingSelfGeneric : Class<Self, Fields, Schema.Struct<ExtractFields<Default, Fields, true>>> & { readonly [V in Variants[number]]: Extract<V, Struct<Fields>>; }; readonly Union: <const Members extends ReadonlyArray<Struct<any>>>(members: Members) => Union<Members> & Union.Variants<Members, Variants[number]>; readonly extract: { <V extends Variants[number]>(variant: V): <A extends Struct<any>>(self: A) => Extract<V, A, V extends Default ? true : false>; <V extends Variants[number], A extends Struct<any>>(self: A, variant: V): Extract<V, A, V extends Default ? true : false>; }; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/VariantSchema.ts#L344)

Since v4.0.0