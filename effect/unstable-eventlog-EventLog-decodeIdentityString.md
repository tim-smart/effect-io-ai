Package: `effect`<br />
Module: `EventLog`<br />

## EventLog.decodeIdentityString

Decodes a base64url identity string produced by `encodeIdentityString`.

**Gotchas**

Invalid input throws a schema decoding error.

**Signature**

```ts
declare const decodeIdentityString: (value: string) => Identity["Service"]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EventLog.ts#L455)

Since v4.0.0