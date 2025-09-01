Package: `effect`<br />
Module: `Schema`<br />

## Schema.Defect

Defines a schema for handling JavaScript errors (`Error` instances) and other types of defects.
It decodes objects into Error instances if they match the expected structure (i.e., have a `message` and optionally a `name` and `stack`),
or converts other values to their string representations.

When encoding, it converts `Error` instances back into plain objects containing only the error's name and message,
or other values into their string forms.

This is useful for serializing and deserializing errors across network boundaries where error objects do not natively serialize.

**Signature**

```ts
declare class Defect
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L9507)

Since v3.10.0