## optimize

The `optimize` function will combine text nodes so that they can be rendered
more efficiently. An optimized document is always laid out in an identical
manner to its un-optimized counterpart.

When laying a `Doc` out to a `SimpleDocStream`, every component of the input
document is translated directly to the simpler output format. This sometimes
yields undesirable chunking when many pieces have been concatenated together.

It is therefore a good idea to run `fuse` on concatenations of lots of small
strings that are used many times.

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Optimize from "@effect/printer/Optimize"

// The document below contains a chain of four entries in the output `DocStream`
const inefficient = Doc.hsep([
  Doc.char("a"),
  Doc.char("b"),
  Doc.char("c"),
  Doc.char("d")
])

// However, the above document is fully equivalent to the tightly packed
// document below which is only a single entry in the output `DocStream` and
// can be processed much more efficiently.
const efficient = Doc.text("abcd")

// We can optimize the `inefficient` document using `Optimize`
Optimize.optimize(Optimize.Deep)(inefficient)
```

**Signature**

```ts
declare const optimize: { (depth: FusionDepth): <A>(self: Doc<A>) => Doc<A>; <A>(self: Doc<A>, depth: FusionDepth): Doc<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Optimize.ts#L129)

Since v1.0.0