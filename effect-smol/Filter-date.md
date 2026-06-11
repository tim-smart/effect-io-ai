Package: `effect`<br />
Module: `Filter`<br />

## Filter.date

A predefined filter that only passes through Date objects.

**When to use**

Use when you need to narrow unknown input to JavaScript `Date` instances with
a reusable `Filter`.

**Details**

Implemented with `fromPredicate(Predicate.isDate)`, so passing values return
`Result.succeed(input)` and failing values return `Result.fail(input)`.

**Gotchas**

The check uses `instanceof Date`, so invalid `Date` objects still pass; the
filter does not validate the timestamp.

**See**

- `Predicate.isDate` for the underlying guard
- `instanceOf` for constructor-based filtering
- `fromPredicate` for custom date checks

**Signature**

```ts
declare const date: Filter<unknown, Date, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L445)

Since v4.0.0