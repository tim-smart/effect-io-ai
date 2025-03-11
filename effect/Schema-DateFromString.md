## DateFromString

Defines a schema that attempts to convert a `string` to a `Date` object using
the `new Date` constructor. This conversion is lenient, meaning it does not
reject strings that do not form valid dates (e.g., using `new Date("Invalid
Date")` results in a `Date` object, despite being invalid).

**Signature**

```ts
declare class DateFromString
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6777)

Since v3.10.0