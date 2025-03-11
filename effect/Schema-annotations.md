## annotations

Merges a set of new annotations with existing ones, potentially overwriting
any duplicates.

**Signature**

```ts
declare const annotations: { <S extends Annotable.All>(annotations: Annotations.GenericSchema<Schema.Type<S>>): (self: S) => Annotable.Self<S>; <S extends Annotable.All>(self: S, annotations: Annotations.GenericSchema<Schema.Type<S>>): Annotable.Self<S>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L4145)

Since v3.10.0