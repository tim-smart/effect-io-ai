# Deep

Instructs the document fusion optimizer to recurse into all leaves of the
document tree, including different layout alternatives and all
location-sensitive values (i.e. those created by `nesting`), which cannot be
fused before, but only during, the layout process. As a result, the
performance cost of using deep document fusion optimization is often hard to
predict and depends on the interplay between page layout and the document
that is to be pretty printed.

This value should only be utilized if profiling demonstrates that it is
**significantly** faster than using `Shallow`.

To import and use `Deep` from the "Optimize" module:

ts
import \* as Optimize from "@effect/printer/Optimize"
// Can be accessed like this
Optimize.Deep
undefined
