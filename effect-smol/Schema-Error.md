Package: `effect`<br />
Module: `Schema`<br />

## Schema.Error

Type-level representation of the schema for JavaScript `Error` instances.

**Signature**

```ts
export interface Error extends instanceOf<globalThis.Error> {
  readonly "Rebuild": Error
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8123)

Since v4.0.0