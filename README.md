# MATLAB Vector Calculus

MATLAB scripts from my BS Space Science coursework that calculate and visualise the core ideas
of vector calculus: **vector fields, gradient, divergence and curl**, plus an electric field
example from electromagnetics.

Each script is short and self-contained, so it's a quick reference for how to do these
calculations in MATLAB, both symbolically (exact formulas) and as plots.

## Scripts

| Script | What it does | MATLAB functions |
|---|---|---|
| [Vector_field_plot.m](Vector_field_plot.m) | Plots the 3D vector field **F = (3xz³, 2x²y, 5y²z)** as arrows | `meshgrid`, `quiver3` |
| [Curl_of_vector_field.m](Curl_of_vector_field.m) | Calculates **∇ × F** symbolically | `syms`, `curl` |
| [Curl_plot.m](Curl_plot.m) | Plots the curl **∇ × F = (10yz, 9xz², 4xy)** as a 3D vector field | `quiver3` |
| [Divergence_find_and_plot.m](Divergence_find_and_plot.m) | Calculates **∇ · F = 3z³ + 2x² + 5y²** and plots its terms | `divergence`, `quiver3` |
| [Gradient.m](Gradient.m) | Calculates the gradient **∇f** of f = sin 2x + cos 2x − y | `syms`, `gradient` |
| [Scalar_field_contour.m](Scalar_field_contour.m) | Draws the scalar field **f = 5x²y − 5xy²** as a 3D surface | `contour`, `surf` |
| [Electric_field_shells.m](Electric_field_shells.m) | Plots the electric field **E(r)** inside, within and outside a thick charged spherical shell (inner radius a = 1, outer radius b = 2, charge density ρ = k/r²) | `linspace`, `plot` |

## The maths in brief

For **F = (3xz³, 2x²y, 5y²z)**:

- **Divergence:** ∇ · F = ∂F₁/∂x + ∂F₂/∂y + ∂F₃/∂z = **3z³ + 2x² + 5y²**
- **Curl:** ∇ × F = (∂F₃/∂y − ∂F₂/∂z, ∂F₁/∂z − ∂F₃/∂x, ∂F₂/∂x − ∂F₁/∂y) = **(10yz, 9xz², 4xy)**

For the **charged shell**, Gauss's law gives:

| Region | Electric field |
|---|---|
| r < a | E = 0 |
| a < r < b | E = k(r − a) / (ε₀ r²) |
| r > b | E = k(b − a) / (ε₀ r²) |

<!-- To show the plots: run export_figures.m in MATLAB, upload the images folder,
     then remove these comment markers so the section below appears.

## Figures

| Vector field | Curl |
|---|---|
| ![](images/Vector_field_plot.png) | ![](images/Curl_plot.png) |

| Divergence | Scalar field | Electric field |
|---|---|---|
| ![](images/Divergence_find_and_plot.png) | ![](images/Scalar_field_contour.png) | ![](images/Electric_field_shells.png) |

-->

## How to run

1. Open MATLAB and set this folder as the current folder.
2. Run any script, e.g. type `Curl_plot` in the Command Window.
3. To save all the plots as PNG files, run `export_figures`.

The symbolic scripts (`Curl_of_vector_field`, `Gradient`, `Divergence_find_and_plot`)
need the **Symbolic Math Toolbox**.
