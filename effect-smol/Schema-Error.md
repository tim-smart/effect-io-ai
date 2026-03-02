Package: `effect`<br />
Module: `Schema`<br />

## Schema.Error

A schema that represents `Error` objects.

The default json serializer decodes to a struct with `name` and `message`
properties (stack is omitted for security).

**Signature**

```ts
declare const Error: Error
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6034)

Since v4.0.0