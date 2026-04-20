Package: `effect`<br />
Module: `Schema`<br />

## Schema.ErrorWithStack

A schema that represents `Error` objects.

The default json serializer decodes to a struct with `name`, `message` and
`stack` properties.

**Signature**

```ts
declare const ErrorWithStack: Error
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7843)

Since v4.0.0