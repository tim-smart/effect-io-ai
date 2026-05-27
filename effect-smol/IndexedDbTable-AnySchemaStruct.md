Package: `@effect/platform-browser`<br />
Module: `IndexedDbTable`<br />

## IndexedDbTable.AnySchemaStruct

Schema constraint for table schemas that expose struct fields.

**Signature**

```ts
type AnySchemaStruct = Schema.Top & {
  readonly fields: Schema.Struct.Fields
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbTable.ts#L83)

Since v4.0.0