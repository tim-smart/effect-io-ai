# Defect

Defines a schema for handling JavaScript errors (`Error` instances) and other types of defects.
It decodes objects into Error instances if they match the expected structure (i.e., have a `message` and optionally a `name` and `stack`),
or converts other values to their string representations.

When encoding, it converts `Error` instances back into plain objects containing only the error's name and message,
or other values into their string forms.

This is useful for serializing and deserializing errors across network boundaries where error objects do not natively serialize.

To import and use `Defect` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.Defect
```

**Signature**

```ts
export declare const Defect: Defect
```
