# annotations

Merges a set of new annotations with existing ones, potentially overwriting
any duplicates.

To import and use `annotations` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.annotations
```

**Signature**

```ts
export declare const annotations: {
  <S extends Annotable.All>(annotations: Annotations.Schema<Schema.Type<S>>): (self: S) => Annotable.Self<S>
  <S extends Annotable.All>(self: S, annotations: Annotations.Schema<Schema.Type<S>>): Annotable.Self<S>
}
```