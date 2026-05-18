Package: `effect`<br />
Module: `Event`<br />

## Event.addError

Adds another error schema to an event definition.

The returned event keeps the same tag, primary key, payload, and success schema
while replacing the error schema with a union of the existing and new errors.

**Signature**

```ts
declare const addError: <A extends Any, Error2 extends Schema.Top>(event: A, error: Error2) => AddError<A, Error2>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L430)

Since v4.0.0